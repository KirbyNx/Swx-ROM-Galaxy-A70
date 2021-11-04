.class Lcom/android/server/wm/ActivityTaskManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1155
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1159
    const/4 v0, -0x1

    .line 1160
    .local v0, "siopLevel":I
    const/4 v1, -0x1

    .line 1161
    .local v1, "battOverheatLevel":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1162
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_8a

    .line 1163
    const-string v3, "check_cooldown_level"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1164
    if-eq v0, v4, :cond_21

    .line 1165
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v0, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    .line 1167
    :cond_21
    const-string v3, "batt_temp_level"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1168
    if-eq v1, v4, :cond_2d

    .line 1169
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput v1, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    .line 1171
    :cond_2d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const v5, 0x1040351

    const-string/jumbo v6, "overheat_id"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/wm/ActivityTaskManagerService;->mOverheatTextId:I
    invoke-static {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->access$202(Lcom/android/server/wm/ActivityTaskManagerService;I)I

    .line 1172
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    if-ne v3, v4, :cond_48

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    if-eq v3, v4, :cond_64

    .line 1173
    :cond_48
    const-string v3, "check_cooldown_list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_64

    .line 1174
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    # getter for: Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->access$300(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1175
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    # setter for: Lcom/android/server/wm/ActivityTaskManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->access$302(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1178
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VZWLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSIOPLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", OverheatLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService$3;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBatteryOverheatLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkingSIOP"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    .end local v0    # "siopLevel":I
    .end local v1    # "battOverheatLevel":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_8a
    return-void
.end method
