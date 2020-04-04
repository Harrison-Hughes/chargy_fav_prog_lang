require 'octokit'

class GitHubUser < ApplicationRecord

  def self.user_exists(username)
    !!Octokit.repositories(username)
    return true
    rescue
    return false 
  end

  def fav_prog_lang
    repositories = Octokit.repositories(self.username)
    languages = repositories.map{ |repo| repo.language }
    languages = languages.filter{ |lang| lang != nil}
    return languages.max_by { |lang| languages.count(lang) }
  end

end
