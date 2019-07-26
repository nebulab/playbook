---
title: Playbook
---

This playbook evolves continuously. We all need to contribute to it in order for it to be the point
of reference for any doubts on Nebulab and our process.

If you have any ideas for additions, improvement, or if you noticed a mistake, feel free to open an
issue or a pull request on the [GitHub repository](https://github.com/nebulab/playbook), or you can
use the [integrated CMS](https://playbook.nebulab.it/middleman/admin/) to edit contents using a
friendly WYSIWYG Markdown editor and a real time preview.

## Content editing with the CMS

The Nebulab Playbook ships with an instance of [Netlify CMS](https://www.netlifycms.org/), a content
management service integrated with Git. It allows you to change Playbook contents without cloning
the Git repository, editing the files locally, pushing the branch and opening the pull request
manually.

### Usage

Visit [https://playbook.nebulab.it/middleman/admin/](https://playbook.nebulab.it/middleman/admin/)
and login with your GitHub account. After successful authentication, you should see a list of
collections. Collections are the way Netlify CMS divides pages by type. You can click on them in
order to get access to the desired collection. There are three kinds of collections:

   1. Home: it includes the homepage. It can be used to edit the homepage contents.

   2. Sections: it includes the Playbook sections displayed as menu voices in the navigation menu.
   It's allowed to change the section position (it affects the menu order), and to add, remove, and
   reorder chapters from the section chapters list. Be aware that removing a section chapter doesn't
   remove it from the repository, it just removes it from the section chapters list. Currently it's
   not possible to edit the section title, to add a new section, change the section image or
   edit the image properties. Such actions should be performed manually.

   3. Section chapters: section chapters are a series of collections, one for each section, which
   include the related section chapters. within a section chapter you can edit the chapter title
   and the chapter content. Be aware that editing the section chapter title via Netlify CMS
   requires to update the title within the related section chapters list, since it is duplicated
   within the section Frontmatter data.

After made the desired changes, click on the `Save` button located in the header on the top of the
edit page. It will open a pull request that will be listed on
https://github.com/nebulab/playbook/pulls.
