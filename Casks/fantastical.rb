class Fantastical < Cask
  url 'http://cdn.flexibits.com/Fantastical_1.3.15.zip'
  homepage 'http://flexibits.com/fantastical'
  version '1.3.15'
  sha256 'df76970ba48d831e99f1d1564f4076271ca48476ed8af5b8996341481e8bfb74'
  link 'Fantastical.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
