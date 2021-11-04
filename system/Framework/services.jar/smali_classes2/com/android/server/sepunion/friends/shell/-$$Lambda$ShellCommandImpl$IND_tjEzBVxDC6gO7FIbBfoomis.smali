.class public final synthetic Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {v0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->lambda$executeCommand$0(Ljava/util/List;Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result p1

    return p1
.end method
