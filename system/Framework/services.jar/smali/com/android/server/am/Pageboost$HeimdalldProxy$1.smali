.class Lcom/android/server/am/Pageboost$HeimdalldProxy$1;
.super Ljava/lang/Object;
.source "Pageboost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Pageboost$HeimdalldProxy;->initReceiver(Landroid/net/LocalSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>(Landroid/net/LocalSocket;)V
    .registers 2

    .line 2769
    iput-object p1, p0, Lcom/android/server/am/Pageboost$HeimdalldProxy$1;->val$sSocket:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2772
    const/4 v0, 0x0

    .line 2775
    .local v0, "line":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/android/server/am/Pageboost$HeimdalldProxy$1;->val$sSocket:Landroid/net/LocalSocket;

    .line 2776
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2777
    .local v1, "socketReadStream":Ljava/io/BufferedReader;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "socketReadStream":Ljava/io/BufferedReader;
    const-string/jumbo v3, "heimdalldProxy receiver: wait for data"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_1b
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1b

    .line 2780
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "heimdalldProxy received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    invoke-static {v0}, Lcom/android/server/am/Pageboost$HeimdalldManager;->onReceiveData(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3e} :catch_3f

    goto :goto_1b

    .line 2784
    :catch_3f
    move-exception v1

    .line 2785
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "heimdalldProxy: socket read failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v1    # "e":Ljava/io/IOException;
    return-void
.end method
