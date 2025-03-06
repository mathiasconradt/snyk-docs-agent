Node.js comes with npm pre-installed, but the manager is updated more frequently than Node.js.
To update Node.js, you need need the npm n module.
Run this code to clear the npm cache, install n, and install the latest stable version of Node.js:
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
To install the latest release, use n latest. Alternatively, you can run n #.#.# to get a specific Node.js version.
Follow these steps to upgrade Node.js:

Run npm-v to see which version you have.
Then runnpm install npm@latest -g to install the newest npm update.
Run npm -v again to make sure npm updated correctly.
