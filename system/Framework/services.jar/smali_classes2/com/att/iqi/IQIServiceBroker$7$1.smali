.class Lcom/att/iqi/IQIServiceBroker$7$1;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/IQIServiceBroker$7;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/att/iqi/IQIServiceBroker$7;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/att/iqi/IQIServiceBroker$7;

    .line 742
    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$7$1;->this$1:Lcom/att/iqi/IQIServiceBroker$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 745
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$7$1;->this$1:Lcom/att/iqi/IQIServiceBroker$7;

    iget-object v0, v0, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v0

    .line 746
    :try_start_5
    # getter for: Lcom/att/iqi/IQIServiceBroker;->sDebug:Z
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "IQIServiceBroker"

    const-string v2, "binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_12
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$7$1;->this$1:Lcom/att/iqi/IQIServiceBroker$7;

    iget-object v1, v1, Lcom/att/iqi/IQIServiceBroker$7;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    # setter for: Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    invoke-static {v1, v2}, Lcom/att/iqi/IQIServiceBroker;->access$1502(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    .line 748
    monitor-exit v0

    .line 749
    return-void

    .line 748
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method
