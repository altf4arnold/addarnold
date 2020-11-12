useradd -m -p '$6$Q7c7dCPSork9I0y/$Pbj.UTKw4BAL4Tpnz3e0eU35ZIoOccMD6/spVMc8bPFoKtAmMEyIAZwH3d7iygZtIY.Bl12UeB8EJZLStLMuJ.' arnold
mkdir /home/arnold/.ssh/
./update.sh
mv ./bashrc /home/arnold/.bashrc
mv ./bash_profile /home/arnold/.bash_profile
chown -R arnold:arnold /home/arnold
echo OK
sudo crontab -l arnold > cronfile
echo "1 1 * * *   /home/arnold/addarnold/update.sh" >> cronfile
sudo crontab arnold cronfile
rm cronfile
