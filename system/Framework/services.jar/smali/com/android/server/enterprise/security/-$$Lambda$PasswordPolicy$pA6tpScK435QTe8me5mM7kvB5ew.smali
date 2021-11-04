.class public final synthetic Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$pA6tpScK435QTe8me5mM7kvB5ew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$pA6tpScK435QTe8me5mM7kvB5ew;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$pA6tpScK435QTe8me5mM7kvB5ew;

    invoke-direct {v0}, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$pA6tpScK435QTe8me5mM7kvB5ew;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$pA6tpScK435QTe8me5mM7kvB5ew;->INSTANCE:Lcom/android/server/enterprise/security/-$$Lambda$PasswordPolicy$pA6tpScK435QTe8me5mM7kvB5ew;

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

    invoke-static {}, Lcom/android/server/enterprise/security/PasswordPolicy;->lambda$getUserIdByPackageNameOrUid$5()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
