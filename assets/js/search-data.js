// get the ninja-keys element
const ninja = document.querySelector('ninja-keys');

// add the home and posts menu items
ninja.data = [{
    id: "nav-about",
    title: "about",
    section: "Navigation",
    handler: () => {
      window.location.href = "/";
    },
  },{id: "nav-blog",
          title: "blog",
          description: "",
          section: "Navigation",
          handler: () => {
            window.location.href = "/blog/";
          },
        },{id: "nav-projects",
          title: "projects",
          description: "A growing collection of your cool projects.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/projects/";
          },
        },{id: "nav-cv",
          title: "CV",
          description: "This is my CV.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/cv/";
          },
        },{id: "nav-learning-coding",
          title: "Learning Coding",
          description: "A Collection of codes I wrote when learning to code and also the source from where I learned.",
          section: "Navigation",
          handler: () => {
            window.location.href = "/Learning_Coding/";
          },
        },{id: "nav-game-room",
          title: "Game Room",
          description: "",
          section: "Navigation",
          handler: () => {
            window.location.href = "/game/";
          },
        },{id: "post-inside-the-heart-of-a-star-simulating-stellar-evolution-with-mesa",
        
          title: "Inside the Heart of a Star - Simulating Stellar Evolution with MESA",
        
        description: "A hands-on exploration of stellar structure, theory, and MESA-based simulations",
        section: "Posts",
        handler: () => {
          
            window.location.href = "/blog/2025/stellar-evolution-mesa/";
          
        },
      },{id: "news-a-simple-inline-announcement-with-markdown-emoji-sparkles-smile",
          title: 'A simple inline announcement with Markdown emoji! :sparkles: :smile:',
          description: "",
          section: "News",},{id: "projects-stellar-atlas",
          title: 'Stellar Atlas',
          description: "A simulation-based study of stellar evolution using MESA",
          section: "Projects",handler: () => {
              window.location.href = "/projects/Stellar_Atlas/";
            },},{
        id: 'social-email',
        title: 'email',
        section: 'Socials',
        handler: () => {
          window.open("mailto:%6D%61%73%32%33%6D%73%30%39%36@%69%69%73%65%72%6B%6F%6C.%61%63.%69%6E", "_blank");
        },
      },{
        id: 'social-github',
        title: 'GitHub',
        section: 'Socials',
        handler: () => {
          window.open("https://github.com/MadSc1ent1st96", "_blank");
        },
      },{
        id: 'social-instagram',
        title: 'Instagram',
        section: 'Socials',
        handler: () => {
          window.open("https://instagram.com/aniket_mishra_1009", "_blank");
        },
      },{
      id: 'light-theme',
      title: 'Change theme to light',
      description: 'Change the theme of the site to Light',
      section: 'Theme',
      handler: () => {
        setThemeSetting("light");
      },
    },
    {
      id: 'dark-theme',
      title: 'Change theme to dark',
      description: 'Change the theme of the site to Dark',
      section: 'Theme',
      handler: () => {
        setThemeSetting("dark");
      },
    },
    {
      id: 'system-theme',
      title: 'Use system default theme',
      description: 'Change the theme of the site to System Default',
      section: 'Theme',
      handler: () => {
        setThemeSetting("system");
      },
    },];
