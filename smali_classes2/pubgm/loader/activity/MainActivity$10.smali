.class Lpubgm/loader/activity/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/MainActivity;->initStorageMonitoring(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/MainActivity;

.field final synthetic val$headerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 966
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$10;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$10;->val$headerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 969
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$10;->this$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$10;->val$headerView:Landroid/view/View;

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->access$200(Lpubgm/loader/activity/MainActivity;Landroid/view/View;)V

    .line 970
    return-void
.end method
