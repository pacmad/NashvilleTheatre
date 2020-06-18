import axios from 'axios';
import {baseUrl} from '../apiKeys.json';

const getAllCategories = () => new Promise((resolve, reject) => {
  axios.get(`${baseUrl}/api/category`)
    .then((result) => resolve(result.data))
    .catch(error => reject(error))
})

export { getAllCategories };