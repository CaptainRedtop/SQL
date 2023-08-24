namespace Create_File
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Title = "Create Text File";
            StartController();
        }

        #region Controller
        static void StartController()
        {
            while (true)
            {
                string path = @"C:\RandomTal.txt";
                if (StartGUI() == 1)
                {
                    Random randon = new Random();
                    int tal;
                    //Creating file if it doesn't exist
                    if (File.Exists(path))
                    {
                        ErrorGUI(1);
                    }
                    else
                    {
                        using StreamWriter sw = File.CreateText(path);
                        for (int i = 0; i < 1000000; i++)
                        {
                            tal = randon.Next(0, 10000);
                            sw.WriteLine(i.ToString() + "," + tal);
                        }
                    }
                    //User input for exiting the app
                    var key = Console.ReadKey();
                    if (key.Key == ConsoleKey.Escape)
                    {
                        break;
                    }
                }
                else
                {
                    //Delets file if it exist
                    if (File.Exists(path))
                    {
                        File.Delete(path);
                    }
                    else
                    {
                        ErrorGUI(2);
                    }
                    var key = Console.ReadKey();
                    if (key.Key == ConsoleKey.Escape)
                    {
                        break;
                    }
                }
            }
        }
        #endregion Controller

        #region GUI
        static int StartGUI()
        {
            //Main menu in a loop
            Console.Clear();
            Console.WriteLine("\nYou have the following optoins:");
            Console.WriteLine("Press 1 to create text file");
            Console.WriteLine("Press 2 to delete text file");

            var key = Console.ReadKey();
            if (key.Key == ConsoleKey.D1)
            {
                return 1;
            }
            else
            {
                return 2;
            }
        }
        static void ErrorGUI(int error)
        {
            //Errors if the user chooses invalid option
            switch (error)
            {
                case 1:
                    {
                        Console.WriteLine("\nError: A file already exist.");
                        Console.WriteLine("Press any key to try again or ESC to exit");
                        break;
                    }
                case 2:
                    {
                        Console.WriteLine("\nError: No file exist.");
                        Console.WriteLine("Press any key to try again or ESC to exit");
                        break;
                    }
            }
        }
        #endregion GUI
    }
}
