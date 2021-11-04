.class Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints$GCM;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GCM"
.end annotation


# static fields
.field static final ALIAS:Ljava/lang/String; = "synthetic_password_knox.analytics.service.cryptokey"

.field static final BLOCK_MODE:Ljava/lang/String; = "GCM"

.field static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field static final ENCRYPTION_PADDING:Ljava/lang/String; = "NoPadding"

.field static final IV_SIZE:I = 0xc

.field static final LEGACY_ALIAS:Ljava/lang/String; = "com.samsung.android.knox.analytics.service.cryptokey"

.field static final TLEN_SIZE:I = 0x80


# direct methods
.method constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
