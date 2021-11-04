.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$d61JWzxY5yDoqXigzUhBr39ezTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$d61JWzxY5yDoqXigzUhBr39ezTI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$d61JWzxY5yDoqXigzUhBr39ezTI;

    invoke-direct {v0}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$d61JWzxY5yDoqXigzUhBr39ezTI;-><init>()V

    sput-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$d61JWzxY5yDoqXigzUhBr39ezTI;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$d61JWzxY5yDoqXigzUhBr39ezTI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/content/pm/SharedLibraryInfo;

    check-cast p2, Landroid/content/pm/SharedLibraryInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->lambda$executeSharedLibrariesUpdateLPr$19(Landroid/content/pm/SharedLibraryInfo;Landroid/content/pm/SharedLibraryInfo;)V

    return-void
.end method
