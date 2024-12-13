import { apolloClient } from '@/app/lib/apolloClient';
import { GetTodosQuery, GetTodosDocument } from '@/gql/graphql';
// import { gql } from '@apollo/client';

// const GET_TODOS = gql`
//   query GetTodos {
//     todos {
//       id
//       title
//       description
//     }
//   }
// `;

export default async function Home() {
  // const { data } = await apolloClient.query({
  //   query: GET_TODOS,
  // });
  const { data } = await apolloClient.query<GetTodosQuery>({
    query: GetTodosDocument,
  });

  return (
    <main className='container mx-auto p-6'>
      <h1 className='text-2xl font-bold'>To-Do 一覧</h1>
      <ul className='list-disc pl-5'>
        {data.todos.map((todo) => (
          <li key={todo.id} className='mb-4'>
            <h2 className='text-lg font-semibold'>{todo.title}</h2>
            <p className='text-gray-600'>{todo.description}</p>
            <p className='text-gray-400'>{todo.user.email}</p>
            <ul className='pl-5 mt-2'>
              {todo.comments.map((comment) => (
                <li key={comment.id} className='text-gray-400'>
                  {comment.content}
                </li>
              ))}
            </ul>
          </li>
        ))}
      </ul>
    </main>
  );
}
