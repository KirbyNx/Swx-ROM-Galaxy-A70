.class Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;
.super Ljava/lang/Thread;
.source "AudioGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/AudioGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioGameThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/AudioGameManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/AudioGameManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/AudioGameManager;

    .line 100
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    .line 101
    const-string v0, "AudioGameThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    # getter for: Lcom/samsung/android/server/audio/AudioGameManager;->mSemGameManager:Lcom/samsung/android/game/SemGameManager;
    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioGameManager;->access$000(Lcom/samsung/android/server/audio/AudioGameManager;)Lcom/samsung/android/game/SemGameManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/SemGameManager;->getGameList()Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "gameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "gamePkgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    # getter for: Lcom/samsung/android/server/audio/AudioGameManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/server/audio/AudioGameManager;->access$100(Lcom/samsung/android/server/audio/AudioGameManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/server/audio/AudioHelper;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 110
    .local v3, "curAppUid":I
    if-nez v3, :cond_27

    goto :goto_e

    .line 111
    :cond_27
    iget-object v4, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    .line 112
    iget-object v4, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    # getter for: Lcom/samsung/android/server/audio/AudioGameManager;->mUidList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/android/server/audio/AudioGameManager;->access$200(Lcom/samsung/android/server/audio/AudioGameManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x100

    if-lt v4, v5, :cond_3c

    .line 113
    goto :goto_3d

    .line 115
    .end local v2    # "gamePkgName":Ljava/lang/String;
    .end local v3    # "curAppUid":I
    :cond_3c
    goto :goto_e

    .line 116
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioGameManager$AudioGameThread;->this$0:Lcom/samsung/android/server/audio/AudioGameManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioGameManager;->setParamGameUidList()V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_42} :catch_43

    .line 119
    .end local v0    # "gameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_47

    .line 117
    :catch_43
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_47
    return-void
.end method
