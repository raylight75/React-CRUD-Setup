const env = {
  database: 'employeeSystem',
  username: 'user_iptvpro',
  password: '0X0UhTdSBkvkcSMm',
  host: 'localhost',
  port: '7999',
  dialect: 'mysql',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
 
module.exports = env;