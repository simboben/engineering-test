import React from 'react'
import { BookingTableRow } from 'components/listing'

function VariantBlock(props) {
  let { variants } = props

  return (
    <div className='table availability-table'>
      <div className='table-body'>
        {variants.map(variant => {
          return <BookingTableRow
            key={variant.gid}
            variant={variant}
          />
        })}
      </div>
    </div>
  )
}

export default VariantBlock
