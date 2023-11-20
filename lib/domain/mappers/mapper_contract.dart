abstract class MapperContract<D, M> {
  M mapToModel(D dto);

  D mapToDto(M model);
}
