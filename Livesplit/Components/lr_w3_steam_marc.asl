state("witcher3", "steam")
{
    int point : 0x02CCF548, 0x80, 0x90, 0x68, 0x68, 0x8, 0x0, 0x88;
}

isLoading
{
    return current.point == 1;
}

//Notes:
//	pauses only during the loading screen, not in the main menu