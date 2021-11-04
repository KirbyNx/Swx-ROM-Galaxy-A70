.class Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;
.super Landroid/os/AsyncTask;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/EngmodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMSConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVER_URI:Ljava/lang/String; = "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"


# instance fields
.field private mEmRequest:[B

.field private mResponseBody:[B

.field final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;[B)V
    .registers 3
    .param p2, "emRequest"    # [B

    .line 393
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->mEmRequest:[B

    .line 395
    return-void
.end method

.method private post([B)[B
    .registers 8
    .param p1, "message"    # [B

    .line 411
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;

    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->this$0:Lcom/android/server/sepunion/EngmodeService;

    const-string/jumbo v3, "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;-><init>(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .local v1, "multipartUtility":Lcom/android/server/sepunion/EngmodeService$MultipartUtility;
    const-string/jumbo v2, "tokenreq"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->addByteArrayPart(Ljava/lang/String;[B)V

    .line 413
    invoke-virtual {v1}, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->finish()Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    .local v2, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [B

    .line 416
    .local v3, "responseBody":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 417
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v3, v4
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_32

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 420
    .end local v4    # "i":I
    :cond_31
    return-object v3

    .line 421
    .end local v1    # "multipartUtility":Lcom/android/server/sepunion/EngmodeService$MultipartUtility;
    .end local v2    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3    # "responseBody":[B
    :catch_32
    move-exception v1

    .line 422
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 424
    .end local v1    # "e":Ljava/io/IOException;
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 385
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 4
    .param p1, "urls"    # [Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->mEmRequest:[B

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->post([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->mResponseBody:[B

    .line 399
    if-eqz v0, :cond_24

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "response length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->mResponseBody:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "engmode_service"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseBody()[B
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->mResponseBody:[B

    return-object v0
.end method
