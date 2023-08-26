class Call < ApplicationRecord
  belongs_to :client

  enum reason: {
    Requerimiento: 'Requerimiento',
    Reclamo: 'Reclamo',
    Consulta: 'Consulta'
  }, _default: 'Consulta'

  validates :reason, inclusion: { in: %w[Reclamo Consulta Requerimiento] }

  include PgSearch::Model
  pg_search_scope :search_full_text, against: {
    client_id: 'A',
    reason: 'B',
    detail: 'C'
  }

end
