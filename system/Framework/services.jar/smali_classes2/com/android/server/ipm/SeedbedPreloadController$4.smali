.class Lcom/android/server/ipm/SeedbedPreloadController$4;
.super Landroid/content/BroadcastReceiver;
.source "SeedbedPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedPreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/SeedbedPreloadController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 726
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedPreloadController$4;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 730
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "action":Ljava/lang/String;
    const-string v3, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 732
    const-string/jumbo v3, "preload_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v4, "seedbeddead"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ","

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string/jumbo v9, "seedbed-SeedbedPreloadController"

    const/4 v10, 0x2

    if-eqz v5, :cond_78

    .line 734
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 735
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_72

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_72

    .line 739
    :cond_35
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_39
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 740
    .local v9, "app":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 741
    .local v11, "infos":[Ljava/lang/String;
    if-eqz v11, :cond_39

    array-length v12, v11

    if-eq v12, v10, :cond_4f

    .line 742
    goto :goto_39

    .line 744
    :cond_4f
    aget-object v12, v11, v7

    .line 745
    .local v12, "removepkgName":Ljava/lang/String;
    aget-object v13, v11, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 746
    .local v13, "removeUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 747
    .local v14, "removeUser":I
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v15

    invoke-virtual {v15, v12, v14, v13}, Lcom/android/server/ipm/MultiUserPkgManager;->checkInstalledApp(Ljava/lang/String;II)Z

    move-result v15

    if-nez v15, :cond_6a

    .line 748
    goto :goto_39

    .line 750
    :cond_6a
    iget-object v15, v0, Lcom/android/server/ipm/SeedbedPreloadController$4;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V
    invoke-static {v15, v10, v13, v10, v12}, Lcom/android/server/ipm/SeedbedPreloadController;->access$000(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;)V

    .line 751
    .end local v9    # "app":Ljava/lang/String;
    .end local v11    # "infos":[Ljava/lang/String;
    .end local v12    # "removepkgName":Ljava/lang/String;
    .end local v13    # "removeUid":I
    .end local v14    # "removeUser":I
    goto :goto_39

    .line 752
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    goto/16 :goto_1c9

    .line 736
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_72
    :goto_72
    const-string v5, " there is no seedbed process kill apps"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void

    .line 753
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_78
    const-string/jumbo v4, "removetask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 754
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 755
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_db

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8e

    goto :goto_db

    .line 759
    :cond_8e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_92
    :goto_92
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 760
    .restart local v9    # "app":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 761
    .restart local v11    # "infos":[Ljava/lang/String;
    if-eqz v11, :cond_92

    array-length v12, v11

    if-eq v12, v10, :cond_a8

    .line 762
    goto :goto_92

    .line 764
    :cond_a8
    aget-object v12, v11, v7

    .line 765
    .restart local v12    # "removepkgName":Ljava/lang/String;
    aget-object v13, v11, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 766
    .local v15, "removeUid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 767
    .restart local v14    # "removeUser":I
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v13

    invoke-virtual {v13, v12, v14, v15}, Lcom/android/server/ipm/MultiUserPkgManager;->checkInstalledApp(Ljava/lang/String;II)Z

    move-result v13

    if-nez v13, :cond_c3

    .line 768
    goto :goto_92

    .line 770
    :cond_c3
    iget-object v13, v0, Lcom/android/server/ipm/SeedbedPreloadController$4;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    const/16 v16, 0x1

    # getter for: Lcom/android/server/ipm/SeedbedPreloadController;->DELAY_PRELOAD_MILLIS:J
    invoke-static {}, Lcom/android/server/ipm/SeedbedPreloadController;->access$700()J

    move-result-wide v18

    move/from16 v20, v14

    .end local v14    # "removeUser":I
    .local v20, "removeUser":I
    move/from16 v14, v16

    move/from16 v21, v15

    .end local v15    # "removeUid":I
    .local v21, "removeUid":I
    move/from16 v16, v20

    move-object/from16 v17, v12

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessageDelay(IIILjava/lang/Object;J)V
    invoke-static/range {v13 .. v19}, Lcom/android/server/ipm/SeedbedPreloadController;->access$800(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;J)V

    .line 771
    .end local v9    # "app":Ljava/lang/String;
    .end local v11    # "infos":[Ljava/lang/String;
    .end local v12    # "removepkgName":Ljava/lang/String;
    .end local v20    # "removeUser":I
    .end local v21    # "removeUid":I
    goto :goto_92

    .line 772
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d9
    goto/16 :goto_1c9

    .line 756
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_db
    :goto_db
    const-string v5, " there is no menu recent kill apps"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return-void

    .line 773
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e1
    const-string/jumbo v4, "normallaunch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_162

    .line 774
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 775
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_15c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f7

    goto :goto_15c

    .line 779
    :cond_f7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 780
    .local v11, "app":Ljava/lang/String;
    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 781
    .local v12, "infos":[Ljava/lang/String;
    if-eqz v12, :cond_159

    array-length v13, v12

    if-eq v13, v10, :cond_111

    .line 782
    goto :goto_fb

    .line 784
    :cond_111
    aget-object v13, v12, v7

    .line 785
    .local v13, "launchpkgName":Ljava/lang/String;
    aget-object v14, v12, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 786
    .local v14, "launchpkgUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 787
    .local v15, "launchpkgUser":I
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v7

    invoke-virtual {v7, v13, v15, v14}, Lcom/android/server/ipm/MultiUserPkgManager;->checkInstalledApp(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_12d

    .line 788
    const/4 v7, 0x0

    goto :goto_fb

    .line 790
    :cond_12d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " normal launch process:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " launchpkgUid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " launchpkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v7, v0, Lcom/android/server/ipm/SeedbedPreloadController$4;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V
    invoke-static {v7, v10, v14, v8, v13}, Lcom/android/server/ipm/SeedbedPreloadController;->access$000(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;)V

    .line 792
    .end local v11    # "app":Ljava/lang/String;
    .end local v12    # "infos":[Ljava/lang/String;
    .end local v13    # "launchpkgName":Ljava/lang/String;
    .end local v14    # "launchpkgUid":I
    .end local v15    # "launchpkgUser":I
    const/4 v7, 0x0

    goto :goto_fb

    .line 781
    .restart local v11    # "app":Ljava/lang/String;
    .restart local v12    # "infos":[Ljava/lang/String;
    :cond_159
    const/4 v7, 0x0

    goto :goto_fb

    .line 793
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "app":Ljava/lang/String;
    .end local v12    # "infos":[Ljava/lang/String;
    :cond_15b
    goto :goto_1c9

    .line 776
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15c
    :goto_15c
    const-string v5, " there is no normal launch apps"

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void

    .line 795
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_162
    const-string/jumbo v4, "package_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_1c9

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c9

    const-string v5, "booster"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c9

    .line 797
    const-string/jumbo v5, "preload_userid"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 798
    .local v5, "userId":I
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledAppsByUseId(I)Ljava/util/List;

    move-result-object v6

    .line 799
    .local v6, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 800
    .local v7, "size":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "i":I
    :goto_18f
    if-lez v8, :cond_1c9

    .line 801
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 802
    .local v11, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    iget-object v12, v11, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c6

    .line 803
    iget-object v12, v0, Lcom/android/server/ipm/SeedbedPreloadController$4;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Get reply pkgName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v9, v0, Lcom/android/server/ipm/SeedbedPreloadController$4;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    iget v12, v11, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    const/4 v13, 0x3

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V
    invoke-static {v9, v10, v12, v13, v4}, Lcom/android/server/ipm/SeedbedPreloadController;->access$000(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;)V

    .line 805
    goto :goto_1c9

    .line 800
    .end local v11    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_1c6
    add-int/lit8 v8, v8, -0x1

    goto :goto_18f

    .line 811
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    .end local v7    # "size":I
    .end local v8    # "i":I
    :cond_1c9
    :goto_1c9
    return-void
.end method
