.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.super Landroid/os/Binder;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_BLOCKED_KEY:Ljava/lang/String; = "cover_authentication_blocked"

.field private static final BLOCKLIST_ROOT:Ljava/lang/String;

.field public static final BLOCKLIST_SEPARATOR:Ljava/lang/String; = ","

.field private static final DBG:Z

.field public static final PUBKEY_BLOCKLIST_KEY:Ljava/lang/String; = "cover_pubkey_blocklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SAccessoryManager_CertBlocklister"

.field private static mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

.field private static mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

.field private static mIsBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->DBG:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/saccessory_manager/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->BLOCKLIST_ROOT:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->BLOCKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cover_pubkey_blocklist.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->registerObservers(Landroid/content/ContentResolver;)V

    .line 212
    return-void
.end method

.method static synthetic access$400()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    .registers 1

    .line 34
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 34
    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return p0
.end method

.method private buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 222
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;

    const-string v1, "cover_authentication_blocked"

    invoke-direct {v0, v1, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;
    .registers 6
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 215
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const-string v2, "cover_pubkey_blocklist"

    const-string/jumbo v3, "pubkey"

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 227
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 228
    nop

    .line 229
    const-string v0, "cover_pubkey_blocklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    .line 228
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    nop

    .line 235
    const-string v0, "cover_authentication_blocked"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    return-void
.end method


# virtual methods
.method public isAuthenticationBlocked()Z
    .registers 2

    .line 67
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z

    return v0
.end method

.method public isThisKeyBlocklisted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->isThisKeyBlocklisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readFile()V
    .registers 2

    .line 75
    sget-object v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mBlocklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->readFile()V

    .line 76
    return-void
.end method

.method public setCertBlocklistListener(Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    .line 62
    sput-object p1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    .line 63
    return-void
.end method
