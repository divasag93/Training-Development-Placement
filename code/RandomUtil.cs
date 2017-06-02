using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

/// <summary>
/// Random string generators.
/// </summary>
static class RandomUtil
{
    /// <summary>
    /// Get random string of 11 characters.
    /// </summary>
    /// <returns>Random string.</returns>
    public static string GetRandomString()
    {
        string path = Path.GetRandomFileName();
        path = path.Replace(".", ""); // Remove period.
        return path;
    }
}