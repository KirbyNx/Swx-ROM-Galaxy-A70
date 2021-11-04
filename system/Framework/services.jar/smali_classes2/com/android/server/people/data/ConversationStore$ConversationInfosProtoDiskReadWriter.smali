.class Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "ConversationStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/ConversationStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationInfosProtoDiskReadWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/people/data/AbstractProtoDiskReadWriter<",
        "Ljava/util/List<",
        "Lcom/android/server/people/data/ConversationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mConversationInfoFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4
    .param p1, "rootDir"    # Ljava/io/File;
    .param p2, "conversationInfoFileName"    # Ljava/lang/String;
    .param p3, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 309
    invoke-direct {p0, p1, p3}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 310
    iput-object p2, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    .line 311
    return-void
.end method

.method static synthetic lambda$protoStreamReader$1(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .registers 5
    .param p0, "protoInputStream"    # Landroid/util/proto/ProtoInputStream;

    .line 327
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 329
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 330
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    .line 332
    goto :goto_4

    .line 334
    :cond_13
    const-wide v1, 0x20b00000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 336
    .local v1, "token":J
    invoke-static {p0}, Lcom/android/server/people/data/ConversationInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v3

    .line 338
    .local v3, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 339
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_26} :catch_29

    .line 340
    nop

    .end local v1    # "token":J
    .end local v3    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    goto :goto_4

    .line 343
    :cond_28
    goto :goto_33

    .line 341
    :catch_29
    move-exception v1

    .line 342
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/people/data/ConversationStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/people/data/ConversationStore;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to read protobuf input stream."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v1    # "e":Ljava/io/IOException;
    :goto_33
    return-object v0
.end method

.method static synthetic lambda$protoStreamWriter$0(Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V
    .registers 6
    .param p0, "protoOutputStream"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "data"    # Ljava/util/List;

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/people/data/ConversationInfo;

    .line 317
    .local v1, "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    const-wide v2, 0x20b00000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 318
    .local v2, "token":J
    invoke-virtual {v1, p0}, Lcom/android/server/people/data/ConversationInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 319
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 320
    .end local v1    # "conversationInfo":Lcom/android/server/people/data/ConversationInfo;
    .end local v2    # "token":J
    goto :goto_4

    .line 321
    :cond_20
    return-void
.end method


# virtual methods
.method deleteConversationsFile()V
    .registers 2

    .line 367
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader<",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .line 326
    sget-object v0, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$AkEIrDDdW8_rz0XZe6Z4dnPl-xk;

    return-object v0
.end method

.method protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter<",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;>;"
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$X5sTtfwjzwVPlSk3AGJazGmrmME;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$ConversationStore$ConversationInfosProtoDiskReadWriter$X5sTtfwjzwVPlSk3AGJazGmrmME;

    return-object v0
.end method

.method saveConversationsImmediately(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 362
    .local p1, "conversationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method scheduleConversationsSave(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/people/data/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .line 353
    .local p1, "conversationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/people/data/ConversationInfo;>;"
    iget-object v0, p0, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->mConversationInfoFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 354
    return-void
.end method
