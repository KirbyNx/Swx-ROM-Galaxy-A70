.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$5:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$1:I

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$2:I

    iget-object v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$vGE7GyPqVR-bpbXnaXNEqdYWH5Q;->f$5:Landroid/content/ComponentName;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$addDexURLShortcut$0$KnoxCustomManagerService(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
