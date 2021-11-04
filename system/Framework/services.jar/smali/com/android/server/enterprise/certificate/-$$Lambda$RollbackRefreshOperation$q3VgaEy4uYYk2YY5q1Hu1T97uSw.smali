.class public final synthetic Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:[Ljava/lang/Integer;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;[Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;->f$1:[Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;->f$1:[Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$q3VgaEy4uYYk2YY5q1Hu1T97uSw;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$execute$1$RollbackRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
