.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$2_eryHAGfyqekTRPfoCj1hekMBY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$2_eryHAGfyqekTRPfoCj1hekMBY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$2_eryHAGfyqekTRPfoCj1hekMBY;

    invoke-direct {v0}, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$2_eryHAGfyqekTRPfoCj1hekMBY;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$2_eryHAGfyqekTRPfoCj1hekMBY;->INSTANCE:Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$2_eryHAGfyqekTRPfoCj1hekMBY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$getBackupRestoreState$33()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
