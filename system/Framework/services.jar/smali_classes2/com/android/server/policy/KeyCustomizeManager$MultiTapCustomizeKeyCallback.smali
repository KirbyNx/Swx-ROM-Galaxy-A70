.class Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;
.super Ljava/lang/Object;
.source "KeyCustomizeManager.java"

# interfaces
.implements Lcom/android/server/policy/MultiTapKeyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCustomizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiTapCustomizeKeyCallback"
.end annotation


# instance fields
.field mKeyCode:I

.field final synthetic this$0:Lcom/android/server/policy/KeyCustomizeManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyCustomizeManager;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/KeyCustomizeManager;
    .param p2, "keyCode"    # I

    .line 1040
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    .line 1041
    iput p2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    .line 1042
    return-void
.end method


# virtual methods
.method public onDoubleTap()V
    .registers 7

    .line 1083
    const-string v0, "KeyCustomizeManager"

    const-string/jumbo v1, "onDoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, "keyCode":I
    const/4 v1, -0x1

    .line 1087
    .local v1, "action":I
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    iget-object v2, v2, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1088
    :try_start_f
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizeManager;->access$600(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    move-result-object v3

    const/16 v4, 0x8

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v3, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    .line 1089
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 1090
    .local v3, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-nez v3, :cond_2e

    .line 1091
    const-string v4, "KeyCustomizeManager"

    const-string v5, "Info is null. Can not launch DoubleTap action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    monitor-exit v2

    return-void

    .line 1094
    :cond_2e
    iget v5, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    move v0, v5

    .line 1095
    iget v5, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    move v1, v5

    .line 1096
    .end local v3    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_b5

    .line 1098
    if-eqz v0, :cond_43

    iget v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    if-eq v0, v2, :cond_43

    .line 1099
    const-string v2, "KeyCustomizeManager"

    const-string v3, "No matched with keyCode. Can not launch DoubleTap action."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    return-void

    .line 1103
    :cond_43
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    .line 1104
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    goto :goto_b4

    .line 1105
    :cond_4e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5a

    .line 1106
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    goto :goto_b4

    .line 1107
    :cond_5a
    if-nez v1, :cond_9e

    .line 1108
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizeManager;->access$700(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/PhoneWindowManagerExt;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 1109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemKeyEventRequested mKeyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyCustomizeManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void

    .line 1113
    :cond_86
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mDoubleTapCallback:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizeManager;->access$900(Lcom/android/server/policy/KeyCustomizeManager;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BooleanSupplier;

    .line 1114
    .local v2, "supplier":Ljava/util/function/BooleanSupplier;
    if-eqz v2, :cond_9d

    .line 1115
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 1117
    .end local v2    # "supplier":Ljava/util/function/BooleanSupplier;
    :cond_9d
    goto :goto_b4

    .line 1118
    :cond_9e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No matched with action. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyCustomizeManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :goto_b4
    return-void

    .line 1096
    :catchall_b5
    move-exception v3

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v3
.end method

.method public onSingleTap()V
    .registers 7

    .line 1046
    const-string v0, "KeyCustomizeManager"

    const-string/jumbo v1, "onSingleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "keyCode":I
    const/4 v1, -0x1

    .line 1050
    .local v1, "action":I
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    iget-object v2, v2, Lcom/android/server/policy/KeyCustomizeManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1051
    :try_start_f
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mKeyCustomizeManager:Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;
    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizeManager;->access$600(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;

    move-result-object v3

    const/4 v4, 0x3

    # invokes: Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->getKeyCustomizeDataLocked(I)Landroid/util/SparseArray;
    invoke-static {v3, v4}, Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;->access$500(Lcom/android/server/policy/KeyCustomizeManager$KeyCustomizeDataManager;I)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    .line 1052
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 1053
    .local v3, "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v3, :cond_2a

    .line 1054
    iget v5, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    move v0, v5

    .line 1055
    iget v5, v3, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    move v1, v5

    .line 1057
    .end local v3    # "info":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_91

    .line 1059
    if-eqz v0, :cond_39

    iget v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    if-eq v0, v2, :cond_39

    .line 1060
    const-string v2, "KeyCustomizeManager"

    const-string v3, "No matched with keyCode. Can not launch SingleTap action."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    return-void

    .line 1064
    :cond_39
    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    .line 1065
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/policy/KeyCustomizeManager;->startActivity(II)V

    goto :goto_90

    .line 1066
    :cond_44
    if-ne v1, v4, :cond_4f

    .line 1067
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/policy/KeyCustomizeManager;->startService(ILandroid/view/KeyEvent;I)V

    goto :goto_90

    .line 1069
    :cond_4f
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizeManager;->access$700(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/PhoneWindowManagerExt;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v3}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemKeyEventRequested mKeyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyCustomizeManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return-void

    .line 1074
    :cond_79
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mSingleTapCallback:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizeManager;->access$800(Lcom/android/server/policy/KeyCustomizeManager;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BooleanSupplier;

    .line 1075
    .local v2, "supplier":Ljava/util/function/BooleanSupplier;
    if-eqz v2, :cond_90

    .line 1076
    invoke-interface {v2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 1079
    .end local v2    # "supplier":Ljava/util/function/BooleanSupplier;
    :cond_90
    :goto_90
    return-void

    .line 1057
    :catchall_91
    move-exception v3

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v3
.end method

.method public onTripleTap()V
    .registers 4

    .line 1124
    const-string v0, "KeyCustomizeManager"

    const-string/jumbo v1, "onTripleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;
    invoke-static {v1}, Lcom/android/server/policy/KeyCustomizeManager;->access$700(Lcom/android/server/policy/KeyCustomizeManager;)Lcom/android/server/policy/PhoneWindowManagerExt;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    iget v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v1, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemKeyEventRequested mKeyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    return-void

    .line 1131
    :cond_30
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->this$0:Lcom/android/server/policy/KeyCustomizeManager;

    # getter for: Lcom/android/server/policy/KeyCustomizeManager;->mTripleTapCallback:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizeManager;->access$1000(Lcom/android/server/policy/KeyCustomizeManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/KeyCustomizeManager$MultiTapCustomizeKeyCallback;->mKeyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BooleanSupplier;

    .line 1132
    .local v0, "supplier":Ljava/util/function/BooleanSupplier;
    if-eqz v0, :cond_47

    .line 1133
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 1135
    :cond_47
    return-void
.end method
