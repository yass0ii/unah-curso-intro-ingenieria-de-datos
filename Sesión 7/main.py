from core.ConfigConnection import ConfigConnection
from core.Backup import Backup

def run():
    config = ConfigConnection(path="./config.ini")
    focusDB = Backup(config.getConfig(), "FocusDB")
    GoalsDB = Backup(config.getConfig(), "GoalsDB")

    oscar = Backup(config.getConfig(), "OscarDB" )

    focusDB.backup()
    # GoalsDB.backup()

if __name__ == "__main__":
    run()