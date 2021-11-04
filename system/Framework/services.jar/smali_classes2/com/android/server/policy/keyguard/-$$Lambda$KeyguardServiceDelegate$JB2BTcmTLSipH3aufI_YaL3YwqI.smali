.class public final synthetic Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$JB2BTcmTLSipH3aufI_YaL3YwqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$JB2BTcmTLSipH3aufI_YaL3YwqI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$JB2BTcmTLSipH3aufI_YaL3YwqI;

    invoke-direct {v0}, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$JB2BTcmTLSipH3aufI_YaL3YwqI;-><init>()V

    sput-object v0, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$JB2BTcmTLSipH3aufI_YaL3YwqI;->INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$JB2BTcmTLSipH3aufI_YaL3YwqI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->lambda$startKeyguardExitAnimation$1()V

    return-void
.end method
