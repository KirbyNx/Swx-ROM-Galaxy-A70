.class Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultAppChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method private constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
    .param p2, "x1"    # Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 224
    if-eqz p2, :cond_46

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_46

    .line 227
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 230
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    const-string v2, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$802(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_45

    .line 232
    :cond_21
    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 233
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 234
    # getter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$300(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 233
    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object v1

    .line 235
    .local v1, "component":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    # setter for: Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->access$902(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .end local v1    # "component":Landroid/content/ComponentName;
    :cond_45
    :goto_45
    return-void

    .line 225
    .end local v0    # "action":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void
.end method
