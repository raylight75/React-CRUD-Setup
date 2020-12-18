let express = require('express');
let router = express.Router();
 
const customers = require('../controllers/CustomerController.js');
const users = require('../controllers/UserController.js');

router.post('/api/customer', customers.createCustomer);
router.get('/api/customer/:id', customers.getCustomer);
router.get('/api/customers', customers.customers);
router.put('/api/customer/:id', customers.updateCustomer);
router.delete('/api/customer/:id', customers.deleteCustomer);
///
router.post('/api/user', users.createUser);
router.get('/api/user/:id', users.getUser);
router.get('/api/users', users.users);
router.put('/api/user/:id', users.updateUser);
router.delete('/api/user/:id', users.deleteUser);

module.exports = router;