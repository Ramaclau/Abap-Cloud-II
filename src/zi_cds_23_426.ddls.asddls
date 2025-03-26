define hierarchy ZI_CDS_23_426
  as parent child hierarchy (
    source ZI_CDS_22_426
    child to parent association _Manager
    start where Manager is initial
    siblings order by Employee
    multiple parents allowed
    orphans ignore
    cycles breakup
//    generate spantree|
    cache on
    
  )
{
    key Employee,
    Manager,
    Name,
    $node.parent_id as ParentId,
    $node.node_id as NodeId,
    $node.hierarchy_is_cycle as HIsCycle,
    $node.hierarchy_is_orphan as HIsOrfhan,
    $node.hierarchy_level as HisLevel,
    $node.hierarchy_parent_rank as HIsParentRank,
    $node.hierarchy_rank as HIsRank,
    $node.hierarchy_tree_size as HTreeSize
    
}
