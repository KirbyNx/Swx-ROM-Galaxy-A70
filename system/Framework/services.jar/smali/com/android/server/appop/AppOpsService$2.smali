.class Lcom/android/server/appop/AppOpsService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1538
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1541
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1542
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1543
    .local v4, "pkgName":Ljava/lang/String;
    const-string v0, "android.intent.extra.UID"

    const/4 v5, -0x1

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1545
    .local v5, "uid":I
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1546
    iget-object v6, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6

    .line 1547
    :try_start_2a
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1548
    .local v0, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v0, :cond_4d

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v7, :cond_3b

    goto :goto_4d

    .line 1552
    :cond_3b
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1553
    .local v7, "removedOps":Lcom/android/server/appop/AppOpsService$Ops;
    if-eqz v7, :cond_4a

    .line 1554
    iget-object v8, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    # invokes: Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    invoke-static {v8}, Lcom/android/server/appop/AppOpsService;->access$900(Lcom/android/server/appop/AppOpsService;)V

    .line 1556
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v7    # "removedOps":Lcom/android/server/appop/AppOpsService$Ops;
    :cond_4a
    monitor-exit v6

    goto/16 :goto_147

    .line 1549
    .restart local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_4d
    :goto_4d
    monitor-exit v6

    return-void

    .line 1556
    .end local v0    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catchall_4f
    move-exception v0

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_2a .. :try_end_51} :catchall_4f

    throw v0

    .line 1557
    :cond_52
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 1558
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1559
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 1560
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_69

    .line 1561
    return-void

    .line 1564
    :cond_69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v7, v0

    .line 1565
    .local v7, "dstAttributionTags":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v0

    .line 1566
    .local v8, "attributionTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1567
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_b5

    .line 1568
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    .line 1569
    .local v9, "numAttributions":I
    const/4 v10, 0x0

    .local v10, "attributionNum":I
    :goto_88
    if-ge v10, v9, :cond_b5

    .line 1571
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getAttributions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/parsing/component/ParsedAttribution;

    .line 1572
    .local v11, "attribution":Landroid/content/pm/parsing/component/ParsedAttribution;
    iget-object v12, v11, Landroid/content/pm/parsing/component/ParsedAttribution;->tag:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1574
    iget-object v12, v11, Landroid/content/pm/parsing/component/ParsedAttribution;->inheritFrom:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    .line 1575
    .local v12, "numInheritFrom":I
    const/4 v13, 0x0

    .local v13, "inheritFromNum":I
    :goto_a0
    if-ge v13, v12, :cond_b2

    .line 1577
    iget-object v14, v11, Landroid/content/pm/parsing/component/ParsedAttribution;->inheritFrom:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v11, Landroid/content/pm/parsing/component/ParsedAttribution;->tag:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    add-int/lit8 v13, v13, 0x1

    goto :goto_a0

    .line 1570
    .end local v11    # "attribution":Landroid/content/pm/parsing/component/ParsedAttribution;
    .end local v12    # "numInheritFrom":I
    .end local v13    # "inheritFromNum":I
    :cond_b2
    add-int/lit8 v10, v10, 0x1

    goto :goto_88

    .line 1583
    .end local v9    # "numAttributions":I
    .end local v10    # "attributionNum":I
    :cond_b5
    iget-object v9, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v9

    .line 1584
    :try_start_b8
    iget-object v10, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v10, Lcom/android/server/appop/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/appop/AppOpsService$UidState;

    .line 1585
    .local v10, "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    if-eqz v10, :cond_142

    iget-object v11, v10, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v11, :cond_ca

    goto/16 :goto_142

    .line 1589
    :cond_ca
    iget-object v11, v10, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$Ops;

    .line 1590
    .local v11, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    if-nez v11, :cond_d6

    .line 1591
    monitor-exit v9

    return-void

    .line 1595
    :cond_d6
    iput-object v0, v11, Lcom/android/server/appop/AppOpsService$Ops;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 1596
    iget-object v0, v11, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1600
    invoke-virtual {v11}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v0

    .line 1601
    .local v0, "numOps":I
    const/4 v12, 0x0

    .local v12, "opNum":I
    :goto_e2
    if-ge v12, v0, :cond_13e

    .line 1602
    invoke-virtual {v11, v12}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/appop/AppOpsService$Op;

    .line 1604
    .local v13, "op":Lcom/android/server/appop/AppOpsService$Op;
    iget-object v14, v13, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 1605
    .local v14, "numAttributions":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "attributionNum":I
    :goto_f2
    if-ltz v15, :cond_137

    .line 1607
    move/from16 v16, v0

    .end local v0    # "numOps":I
    .local v16, "numOps":I
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1609
    .local v0, "attributionTag":Ljava/lang/String;
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_105

    .line 1611
    goto :goto_130

    .line 1614
    :cond_105
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 1616
    .local v18, "newAttributionTag":Ljava/lang/String;
    move-object/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "newAttributionTag":Ljava/lang/String;
    .local v0, "newAttributionTag":Ljava/lang/String;
    .local v17, "attributionTag":Ljava/lang/String;
    # invokes: Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-static {v13, v13, v0}, Lcom/android/server/appop/AppOpsService$Op;->access$1000(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1618
    .local v19, "newAttributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    move-object/from16 v18, v0

    .end local v0    # "newAttributionTag":Ljava/lang/String;
    .restart local v18    # "newAttributionTag":Ljava/lang/String;
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-object/from16 v2, v19

    .end local v19    # "newAttributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .local v2, "newAttributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->add(Lcom/android/server/appop/AppOpsService$AttributedOp;)V

    .line 1619
    iget-object v0, v13, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1621
    iget-object v0, v1, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    # invokes: Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V
    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->access$900(Lcom/android/server/appop/AppOpsService;)V

    .line 1606
    .end local v2    # "newAttributedOp":Lcom/android/server/appop/AppOpsService$AttributedOp;
    .end local v17    # "attributionTag":Ljava/lang/String;
    .end local v18    # "newAttributionTag":Ljava/lang/String;
    :goto_130
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    move/from16 v0, v16

    goto :goto_f2

    .line 1605
    .end local v16    # "numOps":I
    .local v0, "numOps":I
    :cond_137
    move/from16 v16, v0

    .line 1601
    .end local v0    # "numOps":I
    .end local v13    # "op":Lcom/android/server/appop/AppOpsService$Op;
    .end local v14    # "numAttributions":I
    .end local v15    # "attributionNum":I
    .restart local v16    # "numOps":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    goto :goto_e2

    .end local v16    # "numOps":I
    .restart local v0    # "numOps":I
    :cond_13e
    move/from16 v16, v0

    .line 1624
    .end local v0    # "numOps":I
    .end local v10    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    .end local v11    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v12    # "opNum":I
    monitor-exit v9

    goto :goto_147

    .line 1586
    .restart local v10    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :cond_142
    :goto_142
    monitor-exit v9

    return-void

    .line 1624
    .end local v10    # "uidState":Lcom/android/server/appop/AppOpsService$UidState;
    :catchall_144
    move-exception v0

    monitor-exit v9
    :try_end_146
    .catchall {:try_start_b8 .. :try_end_146} :catchall_144

    throw v0

    .line 1626
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "dstAttributionTags":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "attributionTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_147
    :goto_147
    return-void
.end method
