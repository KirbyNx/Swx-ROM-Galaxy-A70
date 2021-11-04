.class Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    .line 675
    iput-object p1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;->this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 678
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBroadCastReceive [DQA]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService.AM"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x71875fee

    const/4 v3, 0x1

    if-eq v1, v2, :cond_35

    const v2, 0x741706da

    if-eq v1, v2, :cond_2b

    :cond_2a
    goto :goto_3f

    :cond_2b
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v3

    goto :goto_40

    :cond_35
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    goto :goto_40

    :goto_3f
    const/4 v1, -0x1

    :goto_40
    if-eqz v1, :cond_68

    if-eq v1, v3, :cond_45

    goto :goto_75

    .line 687
    :cond_45
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;->this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    # invokes: Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->fpGetDqaDataFormatToSave()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->access$300(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings_fingerprint_ext_bigdata.xml"

    # invokes: Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->access$400(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;->this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    iget-object v1, v1, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    # getter for: Lcom/android/server/biometrics/SemAnalyticsManager;->FACE_FEATURE_HAL:Z
    invoke-static {v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->access$500(Lcom/android/server/biometrics/SemAnalyticsManager;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 690
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;->this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    # invokes: Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->faceGetDqaDataFormatToSave()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->access$600(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settings_face_ext_bigdata.xml"

    # invokes: Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->access$400(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 682
    :cond_68
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;->this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    # invokes: Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->send()V
    invoke-static {v1}, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->access$200(Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;)V

    .line 683
    iget-object v1, p0, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager$1;->this$1:Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;

    iget-object v1, v1, Lcom/android/server/biometrics/SemAnalyticsManager$DQAManager;->this$0:Lcom/android/server/biometrics/SemAnalyticsManager;

    invoke-virtual {v1}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpSendDaemonVersion()V

    .line 684
    nop

    .line 694
    :cond_75
    :goto_75
    return-void
.end method
