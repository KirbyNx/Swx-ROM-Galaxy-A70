.class Lcom/android/server/HermesService$1;
.super Ljava/lang/Thread;
.source "HermesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HermesService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method constructor <init>(Lcom/android/server/HermesService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/HermesService;

    .line 100
    iput-object p1, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 102
    const-string v0, "HERMES#Service"

    const/4 v1, 0x0

    .line 104
    .local v1, "strBigData":Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    # invokes: Lcom/android/server/HermesService;->getPdpData()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/HermesService;->access$000(Lcom/android/server/HermesService;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 106
    if-eqz v1, :cond_12

    .line 107
    iget-object v2, p0, Lcom/android/server/HermesService$1;->this$0:Lcom/android/server/HermesService;

    # invokes: Lcom/android/server/HermesService;->sendBigData(Ljava/lang/String;)I
    invoke-static {v2, v1}, Lcom/android/server/HermesService;->access$100(Lcom/android/server/HermesService;Ljava/lang/String;)I

    goto :goto_18

    .line 109
    :cond_12
    const-string/jumbo v2, "getPdpData is null, skip send bigdata."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 113
    :goto_18
    goto :goto_32

    .line 111
    :catch_19
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getPdpData, Err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method
