module.exports = {
  apps : [{
    name: 'SerialService',
    script: './services/SerialportsService/dist/index.js',
    args: './services/SerialportsService/config.json',
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
    script: './services/SlotsService/dist/index.js',
    args: './services/SlotsService/config.json',
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
    script: './services/Tagger/dist/index.js',
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
    script: './services/StaticFilesServer/index.js',
    args: '4000 /usr/DExS/frontend',
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
