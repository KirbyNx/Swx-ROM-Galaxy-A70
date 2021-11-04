.class Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/action/ActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field private final action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

.field private final args:Landroid/os/Bundle;

.field private final extra:I

.field private final flag:I

.field private final taskId:I


# direct methods
.method private constructor <init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;II)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "action"    # Lcom/android/server/sepunion/friends/action/ActionExecutable;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "flag"    # I
    .param p5, "extra"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    .line 117
    iput-object p2, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    .line 118
    iput-object p3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    .line 119
    iput p4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->flag:I

    .line 120
    iput p5, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    .line 121
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/android/server/sepunion/friends/action/ActionDispatcher$1;)V
    .registers 7
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/sepunion/friends/action/ActionExecutable;
    .param p3, "x2"    # Landroid/os/Bundle;
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/server/sepunion/friends/action/ActionDispatcher$1;

    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;-><init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;II)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 126
    const-string v0, "Task"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    if-eqz v1, :cond_42

    .line 127
    const-string v1, "Task[%d] begins - action[0x%x]"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->action:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    iget-object v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->args:Landroid/os/Bundle;

    iget v4, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->flag:I

    iget v7, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-interface {v1, v3, v4, v7}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    .line 129
    const-string v1, "Task[%d] ends - action[0x%x]"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;->extra:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_43

    .line 133
    :cond_42
    goto :goto_47

    .line 131
    :catchall_43
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_47
    return-void
.end method
