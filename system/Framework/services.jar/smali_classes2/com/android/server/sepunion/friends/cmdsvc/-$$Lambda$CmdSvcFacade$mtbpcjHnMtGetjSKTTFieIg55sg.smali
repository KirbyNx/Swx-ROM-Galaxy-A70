.class public final synthetic Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

.field public final synthetic f$1:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;->f$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iput-object p2, p0, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;->f$1:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;->f$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/-$$Lambda$CmdSvcFacade$mtbpcjHnMtGetjSKTTFieIg55sg;->f$1:Ljava/lang/Thread;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->lambda$perform$0$CmdSvcFacade(Ljava/lang/Thread;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
