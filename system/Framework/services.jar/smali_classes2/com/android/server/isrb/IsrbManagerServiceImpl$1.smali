.class Lcom/android/server/isrb/IsrbManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "IsrbManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/isrb/IsrbManagerServiceImpl;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 131
    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z
    invoke-static {v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$300(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 136
    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->isNetworkReady()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I
    invoke-static {v1}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$400(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_27

    .line 137
    return-void

    .line 139
    :cond_27
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v1

    .line 140
    .local v1, "mCalendar":Landroid/icu/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 141
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 143
    .local v2, "mHour":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I
    invoke-static {v4}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$500(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v4

    if-ne v3, v4, :cond_71

    const/4 v3, 0x2

    .line 144
    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I
    invoke-static {v4}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$600(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v4

    if-ne v3, v4, :cond_71

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I
    invoke-static {v4}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$700(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v4

    if-ne v3, v4, :cond_71

    iget-object v3, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    .line 145
    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I
    invoke-static {v3}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$800(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_71

    iget-object v3, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I
    invoke-static {v3}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$800(Lcom/android/server/isrb/IsrbManagerServiceImpl;)I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 146
    :cond_71
    iget-object v3, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    .line 148
    .end local v1    # "mCalendar":Landroid/icu/util/Calendar;
    .end local v2    # "mHour":I
    :cond_76
    goto :goto_a3

    .line 149
    :cond_77
    const-string v1, "com.samsung.isrb.SYSTEM_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.LAUNCH_SOFTWARE_UPDATE_NON_SYSTEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "mIntent":Landroid/content/Intent;
    const v2, 0x10000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const-string v2, "com.wssyncmldm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    # getter for: Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->access$100(Lcom/android/server/isrb/IsrbManagerServiceImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.permission.LAUNCH_SOFTWARE_UPDATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 158
    const-string v2, "IsrbManagerServiceImpl"

    const-string v3, "Sent SW update broadcast to FOTA modul."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_a3
    :goto_a3
    return-void
.end method
