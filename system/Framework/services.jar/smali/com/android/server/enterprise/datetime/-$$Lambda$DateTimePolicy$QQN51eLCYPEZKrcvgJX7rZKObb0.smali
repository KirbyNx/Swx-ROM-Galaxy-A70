.class public final synthetic Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/ContextInfo;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/ContextInfo;ZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;->f$0:Lcom/samsung/android/knox/ContextInfo;

    iput-boolean p2, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;->f$1:Z

    iput p3, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;->f$0:Lcom/samsung/android/knox/ContextInfo;

    iget-boolean v1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;->f$1:Z

    iget v2, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$QQN51eLCYPEZKrcvgJX7rZKObb0;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setDateTimeChangeEnabled$5(Lcom/samsung/android/knox/ContextInfo;ZI)V

    return-void
.end method
