# Getting These Files

## Using `curl`

To download a file from GitHub using Linux tools, you can use `curl` or `wget`. Here's how you can do it with each tool:

1. **Find the Raw URL**: Navigate to the file on GitHub and click on the "Raw" button to get the direct URL to the file.

2. **Use `curl` to download**:

   ```bash
   curl -o filename.ext https://raw.githubusercontent.com/user/repo/branch/path/to/file
   # For this Repo
   curl -o <insertFilename> https://raw.githubusercontent.com/bennentterprise/k8s/main/<path-to-file>
   ```

   Replace `filename.ext` with the desired name for your local file, and replace the URL with the actual raw URL of the file you want to download.

## Using `wget`

1. **Find the Raw URL**: As with `curl`, navigate to the file on GitHub and click on the "Raw" button for the direct URL.

2. **Use `wget` to download**:

   ```bash
   wget -O filename.ext https://raw.githubusercontent.com/user/repo/branch/path/to/file
   wget -O <filename> https://raw.githubusercontent.com/bennentterprise/k8s/main/<path-to-file>
   ```

   Again, replace `filename.ext` with the desired name for your local file, and use the correct raw URL.

Both methods will download the file and save it to your current directory under the specified filename.
</details>


