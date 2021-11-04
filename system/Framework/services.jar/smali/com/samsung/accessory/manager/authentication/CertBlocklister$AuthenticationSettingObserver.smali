.class Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;
.super Landroid/database/ContentObserver;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationSettingObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 190
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"    # Z

    .line 194
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$AuthenticationSettingObserver;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 197
    const/4 v1, 0x1

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->access$502(Z)Z

    .line 198
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onAuthenticationBlocked(Z)V

    goto :goto_2f

    .line 199
    :cond_1c
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 200
    const/4 v1, 0x0

    # setter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mIsBlocked:Z
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->access$502(Z)Z

    .line 201
    # getter for: Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->access$400()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onAuthenticationBlocked(Z)V

    .line 203
    :cond_2f
    :goto_2f
    return-void
.end method
