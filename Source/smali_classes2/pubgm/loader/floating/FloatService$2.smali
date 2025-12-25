.class Lpubgm/loader/floating/FloatService$2;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->InitShowMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;

    .line 217
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 270
    return-void
.end method

.method public onTabSelected(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 8
    .param p1, "lastIndex"    # I
    .param p2, "lastTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p3, "newIndex"    # I
    .param p4, "newTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 220
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v0}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 221
    .local v0, "menuf1":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v1}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 222
    .local v1, "menuf2":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v2}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 223
    .local v2, "menuf3":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v3}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0253

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 224
    .local v3, "menuf4":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v4}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0254

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 225
    .local v4, "menuf5":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v5}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0255

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 226
    .local v5, "menuf6":Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    const/4 v6, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 260
    :pswitch_0
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v6, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v6}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lpubgm/loader/floating/FloatService;->Skin(Landroid/view/View;)V

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v6, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v6}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lpubgm/loader/floating/FloatService;->access$700(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V

    .line 258
    goto :goto_0

    .line 249
    :pswitch_2
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v6, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v6}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lpubgm/loader/floating/FloatService;->access$600(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V

    .line 252
    goto :goto_0

    .line 244
    :pswitch_3
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v6, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v6}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lpubgm/loader/floating/FloatService;->access$500(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V

    .line 247
    goto :goto_0

    .line 239
    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v6, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v6}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lpubgm/loader/floating/FloatService;->access$400(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V

    .line 242
    goto :goto_0

    .line 234
    :pswitch_5
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v6, p0, Lpubgm/loader/floating/FloatService$2;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v6}, Lpubgm/loader/floating/FloatService;->access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lpubgm/loader/floating/FloatService;->access$300(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V

    .line 237
    nop

    .line 265
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
