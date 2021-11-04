.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$ToString;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;->f$0:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;->f$1:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public final toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;->f$0:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$QmTVJ0frTGRk1_SoXou6PkHGeCE;->f$1:Lcom/android/server/pm/PackageManagerService;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/AppsFilter;->lambda$dumpQueries$11(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
