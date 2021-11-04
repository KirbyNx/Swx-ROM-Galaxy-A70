.class Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    .line 210
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->access$1400(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    .line 214
    return-void
.end method
