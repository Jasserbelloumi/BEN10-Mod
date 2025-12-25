.class Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;
.super Ljava/lang/Object;
.source "StartActivityManager.java"

# interfaces
.implements Lcom/hjq/permissions/StartActivityManager$IStartActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/permissions/StartActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartActivityDelegateActivityImpl"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;->mActivity:Landroid/app/Activity;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/hjq/permissions/StartActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Lcom/hjq/permissions/StartActivityManager$1;

    .line 137
    invoke-direct {p0, p1}, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 152
    iget-object v0, p0, Lcom/hjq/permissions/StartActivityManager$StartActivityDelegateActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    return-void
.end method
