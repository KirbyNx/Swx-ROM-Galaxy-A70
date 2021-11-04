.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
.super Landroid/os/AsyncTask;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KernelDataFetch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 219
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 216
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .line 226
    const-string v0, "NetworkAnalytics:NetworkAnalyticsDriver"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "_deliverDataToRecipients: Starting Async task."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_f
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 228
    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "_deliverDataToRecipients: Initialzing handler thread from Async task."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_22
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$100(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->initializeHandlerThread()V

    .line 235
    :goto_2b
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 236
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->readDevice()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "data":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v4, 0x19

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 238
    .end local v3    # "data":Ljava/lang/String;
    goto :goto_2b

    .line 231
    :cond_44
    # getter for: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4f

    const-string v3, "_deliverDataToRecipients: Data Delivery object is null. Terminate."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4f
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V
    invoke-static {v3, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_54} :catch_5c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_54} :catch_55

    .line 233
    return-object v1

    .line 241
    :catch_55
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "doInBackground: Exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5e

    .line 239
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5c
    move-exception v0

    .line 243
    :cond_5d
    nop

    .line 244
    :goto_5e
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    # invokes: Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V
    invoke-static {v0, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->access$200(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V

    .line 245
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 216
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Void;

    .line 252
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 258
    return-void
.end method
