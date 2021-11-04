.class final Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$OverlayManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OverlayManagerCallback"
.end annotation


# instance fields
.field mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

.field final synthetic this$0:Lcom/android/server/om/OverlayManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl;Landroid/content/om/ISamsungOverlayCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/om/OverlayManagerServiceImpl;
    .param p2, "appCallback"    # Landroid/content/om/ISamsungOverlayCallback;

    .line 1176
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1177
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    .line 1178
    return-void
.end method


# virtual methods
.method public onOverlayPackageAdded(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1182
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V

    .line 1183
    return-void
.end method

.method public onOverlayPackageChanged(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "overlayPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "enabled"    # Z

    .line 1193
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;IZLandroid/content/om/ISamsungOverlayCallback;)V

    .line 1195
    return-void
.end method

.method public onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "overlayPackageName"    # Ljava/lang/String;
    .param p2, "overlayTarget"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1187
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->this$0:Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayManagerCallback;->mAppCallback:Landroid/content/om/ISamsungOverlayCallback;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;)V

    .line 1189
    return-void
.end method
