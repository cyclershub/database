import {  } from '/home/letsmoe/Documents/Projects/cyclershub/database/node_modules/@prisma/client';
import { faker } from '@faker-js/faker';



export function fakeforums() {
  return {
    title: faker.lorem.words(5),
    description: undefined,
  };
}
export function fakeforumsComplete() {
  return {
    id: faker.number.int(),
    title: faker.lorem.words(5),
    description: undefined,
    message_count: 0,
    thread_count: 0,
    created_on: new Date(),
    uid: '[object Object]',
  };
}
export function fakeimages() {
  return {
    alt: undefined,
    category: faker.lorem.words(5),
  };
}
export function fakeimagesComplete() {
  return {
    id: faker.number.int(),
    uid: '[object Object]',
    alt: undefined,
    category: faker.lorem.words(5),
    users_id: faker.number.int(),
    created_on: new Date(),
  };
}
export function fakemessage_votes() {
  return {
    type: faker.number.int(),
  };
}
export function fakemessage_votesComplete() {
  return {
    users_id: faker.number.int(),
    messages_id: faker.number.int(),
    type: faker.number.int(),
  };
}
export function fakemessages() {
  return {
    body: undefined,
  };
}
export function fakemessagesComplete() {
  return {
    id: faker.number.int(),
    uid: '[object Object]',
    body: undefined,
    votes: 0,
    created_on: new Date(),
    threads_id: faker.number.int(),
    users_id: faker.number.int(),
  };
}
export function fakeplaces() {
  return {
    title: faker.lorem.words(5),
    description: undefined,
    images: undefined,
    street: undefined,
    zip: undefined,
    city: undefined,
    country: undefined,
    lat: faker.number.float(),
    lng: faker.number.float(),
    type: faker.lorem.words(5),
  };
}
export function fakeplacesComplete() {
  return {
    id: faker.number.int(),
    title: faker.lorem.words(5),
    description: undefined,
    created_on: new Date(),
    images: undefined,
    rating: 0,
    services: 0,
    street: undefined,
    zip: undefined,
    city: undefined,
    country: undefined,
    lat: faker.number.float(),
    lng: faker.number.float(),
    users_id: undefined,
    type: faker.lorem.words(5),
    uid: '[object Object]',
  };
}
export function fakeroutes() {
  return {
    name: undefined,
    body: undefined,
  };
}
export function fakeroutesComplete() {
  return {
    id: faker.number.int(),
    uid: '[object Object]',
    users_id: faker.number.int(),
    created_on: new Date(),
    name: undefined,
    body: undefined,
  };
}
export function fakesetups() {
  return {
    title: faker.lorem.words(5),
    content: faker.lorem.words(5),
    cover: faker.lorem.words(5),
  };
}
export function fakesetupsComplete() {
  return {
    id: faker.number.int(),
    title: faker.lorem.words(5),
    content: faker.lorem.words(5),
    created_on: new Date(),
    users_id: faker.number.int(),
    uid: '[object Object]',
    cover: faker.lorem.words(5),
  };
}
export function faketags() {
  return {
    tag: faker.lorem.words(5),
  };
}
export function faketagsComplete() {
  return {
    id: faker.number.int(),
    tag: faker.lorem.words(5),
    created_on: new Date(),
  };
}
export function fakethread_viewsComplete() {
  return {
    threads_id: faker.number.int(),
    users_id: faker.number.int(),
  };
}
export function fakeThreads() {
  return {
    title: faker.lorem.words(5),
  };
}
export function fakeThreadsComplete() {
  return {
    id: faker.number.int(),
    message_count: 0,
    view_count: 0,
    votes: 0,
    forums_id: faker.number.int(),
    users_id: faker.number.int(),
    title: faker.lorem.words(5),
    uid: '[object Object]',
    created_on: new Date(),
  };
}
export function fakethreads_tagsComplete() {
  return {
    tags_id: faker.number.int(),
    threads_id: faker.number.int(),
  };
}
export function fakeusers() {
  return {
    username: faker.internet.userName(),
    email: faker.internet.email(),
    password: faker.lorem.words(5),
    profile_picture: undefined,
    country: undefined,
    city: undefined,
  };
}
export function fakeusersComplete() {
  return {
    id: faker.number.int(),
    username: faker.internet.userName(),
    email: faker.internet.email(),
    password: faker.lorem.words(5),
    uid: '[object Object]',
    profile_picture: undefined,
    country: undefined,
    city: undefined,
  };
}
