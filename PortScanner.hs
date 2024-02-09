import Network.Socket
import Control.Exception
import Control.Concurrent
import System.IO

-- Attempts to connect to a port.
checkPort :: HostName -> PortNumber -> IO ()
checkPort hostname port = do
    result <- try $ bracket (socket AF_INET Stream defaultProtocol) close (\sock -> do
        hostAddr <- inet_addr hostname
        connect sock (SockAddrInet port hostAddr)
        return port) :: IO (Either IOException PortNumber)
    case result of
        Left _ -> putStrLn $ "Port " ++ show port ++ " is closed."
        Right _ -> putStrLn $ "Port " ++ show port ++ " is open."

-- Scans ports in the given range.
scanPorts :: HostName -> [PortNumber] -> IO ()
scanPorts hostname ports = mapM_ (forkIO . checkPort hostname) ports

main :: IO ()
main = do
    putStrLn "Enter target IP address:"
    target <- getLine
    putStrLn "Enter start port:"
    startPortStr <- getLine
    putStrLn "Enter end port:"
    endPortStr <- getLine
    let startPort = read startPortStr :: PortNumber
    let endPort = read endPortStr :: PortNumber
    let ports = [startPort..endPort] -- Port range to scan.
    putStrLn $ "Starting port scan on " ++ target ++ " for ports " ++ show startPort ++ " to " ++ show endPort
    scanPorts target ports
    threadDelay (length ports * 100000) -- Adjust delay as necessary to allow all threads to complete.
