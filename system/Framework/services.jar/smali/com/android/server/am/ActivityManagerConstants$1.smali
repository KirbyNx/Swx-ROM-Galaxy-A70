.class Lcom/android/server/am/ActivityManagerConstants$1;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 399
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 402
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 404
    return-void

    .line 406
    :cond_17
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_a6

    :cond_1f
    goto :goto_75

    :sswitch_20
    const-string/jumbo v3, "imperceptible_kill_exempt_packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x4

    goto :goto_75

    :sswitch_2b
    const-string/jumbo v3, "min_assoc_log_duration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x7

    goto :goto_75

    :sswitch_36
    const-string/jumbo v3, "max_cached_processes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x0

    goto :goto_75

    :sswitch_41
    const-string/jumbo v3, "force_bg_check_on_restricted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x6

    goto :goto_75

    :sswitch_4c
    const-string v3, "default_background_fgs_starts_restriction_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x2

    goto :goto_75

    :sswitch_56
    const-string/jumbo v3, "oomadj_update_policy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x3

    goto :goto_75

    :sswitch_61
    const-string v3, "default_background_activity_starts_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    goto :goto_75

    :sswitch_6b
    const-string/jumbo v3, "imperceptible_kill_exempt_proc_states"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x5

    :goto_75
    packed-switch v2, :pswitch_data_c8

    goto :goto_a3

    .line 427
    :pswitch_79
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateMinAssocLogDuration()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$600(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 428
    goto :goto_a3

    .line 424
    :pswitch_7f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateForceRestrictedBackgroundCheck()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$500(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 425
    goto :goto_a3

    .line 421
    :pswitch_85
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateImperceptibleKillExemptions()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$400(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 422
    goto :goto_a3

    .line 417
    :pswitch_8b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateOomAdjUpdatePolicy()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$300(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 418
    goto :goto_a3

    .line 414
    :pswitch_91
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundFgsStartsRestriction()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$200(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 415
    goto :goto_a3

    .line 411
    :pswitch_97
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateBackgroundActivityStarts()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$100(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 412
    goto :goto_a3

    .line 408
    :pswitch_9d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants$1;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    # invokes: Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerConstants;->access$000(Lcom/android/server/am/ActivityManagerConstants;)V

    .line 409
    nop

    .line 432
    .end local v1    # "name":Ljava/lang/String;
    :goto_a3
    goto/16 :goto_8

    .line 433
    :cond_a5
    return-void

    :sswitch_data_a6
    .sparse-switch
        -0x7ba4b562 -> :sswitch_6b
        -0x6a37b8d0 -> :sswitch_61
        -0x53dc231d -> :sswitch_56
        -0x476d69e0 -> :sswitch_4c
        -0x47037762 -> :sswitch_41
        -0x41254a05 -> :sswitch_36
        -0x3099a4da -> :sswitch_2b
        -0x2e7b9c6 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_97
        :pswitch_91
        :pswitch_8b
        :pswitch_85
        :pswitch_85
        :pswitch_7f
        :pswitch_79
    .end packed-switch
.end method
