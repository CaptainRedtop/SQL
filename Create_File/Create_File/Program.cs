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
            Random randon = new Random();
            int tal;
            string path = @"C:\RandomTal.txt";
            using StreamWriter sw = File.CreateText(path);
            for (int i = 0; i < 1000000; i++)
            {
                tal = randon.Next(0, 10000);
                sw.WriteLine(i.ToString()+ "," + tal);
            }
        }
        #endregion Controller

    }
}