module.exports = {
  apps : [{
    name: 'SerialService',
    script: './SerialportService/dist/index.js',
    args: './SerialportService/config.json',
    instances: 1,
    source_map_support: true,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production'
    }
  },
  {
    name: 'SlotsService',
    script: './SlotsService/dist/index.js',
    args: './SlotsService/config.json',
    instances: 1,
    source_map_support: true,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production'
    }
  },
  {
    name: 'Tagger',
    script: './Tagger/dist/index.js',
    args: '',
    instances: 1,
    source_map_support: true,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production'
    }
  },
  {
    name: 'ServerHTTP',
    script: './server/index.js',
    args: '',
    instances: 1,
    source_map_support: true,
    autorestart: true,
    watch: false,
    max_memory_restart: '1G',
    env: {
      NODE_ENV: 'development'
    },
    env_production: {
      NODE_ENV: 'production'
    }
  }],

  deploy : {
    production : {
      user : 'node',
      host : '212.83.163.1',
      ref  : 'origin/master',
      repo : 'git@github.com:repo.git',
      path : '/var/www/production',
      'post-deploy' : 'npm install && pm2 reload ecosystem.config.js --env production'
    }
  }
};
