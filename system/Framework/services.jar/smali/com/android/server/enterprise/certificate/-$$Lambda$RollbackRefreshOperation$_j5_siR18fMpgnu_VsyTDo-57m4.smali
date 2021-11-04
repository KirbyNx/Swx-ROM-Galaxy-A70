.class public final synthetic Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput p2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget v1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$4:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$5:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$_j5_siR18fMpgnu_VsyTDo-57m4;->f$6:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$rollbackSystemKeyStoreAsUser$2$RollbackRefreshOperation(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
