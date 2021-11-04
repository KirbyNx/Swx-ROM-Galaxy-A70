.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 641
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 645
    const-string v0, "RestrictionPolicy"

    const-string v1, "FOTAReceiver: onReceive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "result"

    if-eqz v2, :cond_4e

    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, "result":I
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 655
    .local v3, "extra":I
    if-eqz v3, :cond_42

    const/4 v4, 0x1

    if-eq v3, v4, :cond_42

    .line 656
    const/4 v2, 0x1

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    goto :goto_47

    .line 661
    :cond_42
    const-string v4, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_47
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V
    invoke-static {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    .line 664
    .end local v2    # "result":I
    .end local v3    # "extra":I
    goto/16 :goto_c7

    .line 665
    :cond_4e
    const-string v2, "com.xdm.intent.UPDATE_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 673
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_65

    .line 675
    const-string v2, "action:com.xdm.intent.UPDATE_RESULT ignore"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void

    .line 678
    :cond_65
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 679
    .local v2, "extra":I
    add-int/lit8 v3, v2, 0x5

    .line 681
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:com.xdm.intent.UPDATE_RESULT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v0, 0x8

    if-gt v3, v0, :cond_8d

    const/4 v0, 0x5

    if-ge v3, v0, :cond_87

    goto :goto_8d

    .line 685
    :cond_87
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendSeletiveFotaResult(I)V
    invoke-static {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    .end local v2    # "extra":I
    .end local v3    # "result":I
    goto :goto_c6

    .line 683
    .restart local v2    # "extra":I
    .restart local v3    # "result":I
    :cond_8d
    :goto_8d
    return-void

    .line 687
    .end local v2    # "extra":I
    .end local v3    # "result":I
    :cond_8e
    const-string/jumbo v2, "sec.fota.intent.MDM_UNREGISTER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 688
    const-string v2, "FOTAReceiver: action:sec.fota.intent.MDM_UNREGISTER"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # invokes: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearSelectiveFota()Z
    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    .line 690
    const-string v0, "com.wssyncmldm"

    const-string v2, "com.samsung.utagent"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_aa
    array-length v3, v0

    if-ge v2, v3, :cond_c7

    .line 693
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "sec.fota.intent.MDM_REGISTER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v3, "intent1":Landroid/content/Intent;
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    # getter for: Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->access$000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 692
    .end local v3    # "intent1":Landroid/content/Intent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 687
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_c6
    :goto_c6
    nop

    .line 698
    :cond_c7
    :goto_c7
    return-void
.end method
